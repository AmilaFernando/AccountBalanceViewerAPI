using AccountBalanceViewerAPI.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using System.Text;
using AccountBalanceViewerAPI.Utility.ImportAccountBalance;
using AccountBalanceViewerAPI.Utility.CurrentAccountBalance;
using AccountBalanceViewerAPI.Utility.GetChartDataset;

var builder = WebApplication.CreateBuilder(args);
var appAllowedOrigins = "_myAllowedOrigins";

// CORS policy
builder.Services.AddCors(options =>
{
    options.AddPolicy(appAllowedOrigins,
        builder =>
        {
            builder.WithOrigins("http://localhost:4200")
                                .AllowAnyHeader()
                                .AllowAnyMethod();
        });
});


builder.Services.AddDbContext<AccountBalanceDBContext>(options =>
                    options.UseSqlServer(builder.Configuration.GetConnectionString("AccountsDatabase")));

// DI
builder.Services.AddScoped<AccountBalanceRepository>(); 
builder.Services.AddScoped<IImportAccountBalanceUtility, ImportAccountBalanceUtility>();
builder.Services.AddScoped<ICurrentBalanceUtility, CurrentBalanceUtility>();
builder.Services.AddScoped<IChartDatasetUtility, GetChartDatasetUtility>();


// Authentication setup
builder.Services.AddIdentity<IdentityUser, IdentityRole>()
    .AddEntityFrameworkStores<AccountBalanceDBContext>()
    .AddDefaultTokenProviders();

builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
})
.AddJwtBearer(options =>
{
    options.SaveToken = true;
    options.RequireHttpsMetadata = false;
    options.TokenValidationParameters = new TokenValidationParameters()
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidAudience = builder.Configuration["JWT:ValidAudience"],
        ValidIssuer = builder.Configuration["JWT:ValidIssuer"],
        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration["JWT:Secret"]))
    };
});

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

app.UseCors(appAllowedOrigins);

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();

app.Run();
