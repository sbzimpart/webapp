<%@ Page Language="C#" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>My Default Page</title>
    </head>

    <body>
        <h1>Welcome to My App</h1>
        <p>This is a single default.aspx deployment.</p>
        <p>
            Site Name:
            <%= Environment.GetEnvironmentVariable("WEBSITE_SITE_NAME") ?? "Not Running in Azure App Service" %>
        </p>

    </body>

    </html>