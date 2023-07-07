import Vapor
import Fluent
import FluentMySQLDriver

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    // MARK: - Configure Database
    
    try configureDatabase(using: app)
    
    // MARK: - Register Routes
    
    try CompositionRoute.routes(app)
}


private func configureDatabase(using app: Application) throws {
    let tlsConfiguration: TLSConfiguration = .forClient(certificateVerification: .none)
    let databaseConfig: DatabaseConfigurationFactory = .mysql(
        hostname: "localhost",
        username: "root",
        password: "",
        database: "diggingurl",
        tlsConfiguration: tlsConfiguration
    )
    app.databases.use(databaseConfig, as: .mysql)
}
