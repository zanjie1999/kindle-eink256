.class final Lcom/amazon/whispersync/dcp/framework/GuiceLoggingConfigurator;
.super Ljava/lang/Object;
.source "GuiceLoggingConfigurator.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;


# static fields
.field private static final GUICE_LOGGER_GCROOT:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.amazon.whispersync.com.google.inject.internal.util.$FinalizableReferenceQueue"

    .line 11
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/GuiceLoggingConfigurator;->GUICE_LOGGER_GCROOT:Ljava/util/logging/Logger;

    .line 20
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
