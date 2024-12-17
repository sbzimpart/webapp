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
            <%= Environment.GetEnvironmentVariable("WEBSITE_SITE_NAME") ?? "Not Running in Azure App Service" %> <br />
                Log Level:
                <%= Environment.GetEnvironmentVariable("INSPECTOR_LOG_LEVEL") ?? "Not set" %>

                    <% Response.Write("<br />Host: " + HttpContext.Current.Request.Url.Host);
                    Response.Write("<br />Authority: " + HttpContext.Current.Request.Url.Authority);
                    Response.Write("<br />Port: " + HttpContext.Current.Request.Url.Port);
                    Response.Write("<br />AbsolutePath: " + HttpContext.Current.Request.Url.AbsolutePath);
                    Response.Write("<br />ApplicationPath: " + HttpContext.Current.Request.ApplicationPath);
                    Response.Write("<br />AbsoluteUri: " + HttpContext.Current.Request.Url.AbsoluteUri);
                    Response.Write("<br />PathAndQuery: " + HttpContext.Current.Request.Url.PathAndQuery);
                    Response.Write("<br />RawUrl: " + HttpContext.Current.Request.RawUrl);
                    %>

        </p>

    </body>

    </html>