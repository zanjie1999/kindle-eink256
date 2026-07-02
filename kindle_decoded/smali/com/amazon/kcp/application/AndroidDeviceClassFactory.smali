.class public Lcom/amazon/kcp/application/AndroidDeviceClassFactory;
.super Ljava/lang/Object;
.source "AndroidDeviceClassFactory.java"


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

.field private final pathDescriptorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->INSTANCE:Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->pathDescriptorLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->INSTANCE:Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    return-object v0
.end method


# virtual methods
.method public getAlertDialog(Landroid/content/res/Resources;)Lcom/amazon/android/util/IAlertDialog;
    .locals 1

    .line 78
    :try_start_0
    sget v0, Lcom/amazon/kindle/krl/R$string;->alert_dialog:I

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/util/IAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 82
    :catch_0
    new-instance p1, Lcom/amazon/android/util/StandaloneAlertDialog;

    invoke-direct {p1}, Lcom/amazon/android/util/StandaloneAlertDialog;-><init>()V

    return-object p1
.end method

.method public getAndroidDeviceConfigurator(Landroid/content/Context;)Lcom/amazon/kcp/application/IAndroidDeviceConfigurator;
    .locals 1

    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->device_configurator:I

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/IAndroidDeviceConfigurator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 109
    :catch_0
    sget-object p1, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->TAG:Ljava/lang/String;

    const-string v0, "Could not find the compatible device configurator. Returning default one. You are on your own now."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance p1, Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;

    invoke-direct {p1}, Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;-><init>()V

    return-object p1
.end method

.method public getBookLayoutFactory(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/BookLayoutFactory;
    .locals 2

    .line 117
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->book_layout_factory:I

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 120
    :catch_0
    new-instance p1, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;

    invoke-direct {p1}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;-><init>()V

    return-object p1
.end method

.method public getButtonFactory(Landroid/content/Context;)Lcom/amazon/android/menu/IButtonFactory;
    .locals 2

    .line 134
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->button_factory:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/menu/IButtonFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 136
    :catch_0
    new-instance p1, Lcom/amazon/android/menu/NoOpButtonFactory;

    invoke-direct {p1}, Lcom/amazon/android/menu/NoOpButtonFactory;-><init>()V

    return-object p1
.end method

.method public getHelpAndFeedbackActivity(Landroid/content/Context;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            ">;"
        }
    .end annotation

    .line 171
    sget v0, Lcom/amazon/kindle/krl/R$string;->help_and_feedback_activity:I

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 176
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getHomeLibraryActivity(Landroid/content/Context;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            ">;"
        }
    .end annotation

    .line 148
    sget v0, Lcom/amazon/kindle/krl/R$string;->ruby_2017_main_activity:I

    const/4 v1, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public getLaunchActivity(Landroid/content/Context;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 195
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/krl/R$string;->launch_activity:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getMessageEncoderCreator(Landroid/content/Context;)Lcom/amazon/kcp/readingstreams/IMessageEncoderCreator;
    .locals 2

    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->reading_streams_message_encoder:I

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/readingstreams/IMessageEncoderCreator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 97
    sget-object v0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->TAG:Ljava/lang/String;

    const-string v1, "Could not find the Message Encoder Creator for the current device. Returning a new instance of NopMessageEncoderCreator"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    new-instance p1, Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator;

    invoke-direct {p1}, Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator;-><init>()V

    return-object p1
.end method

.method public getPathDescriptor(Landroid/content/Context;)Lcom/amazon/kindle/io/IPathDescriptor;
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->pathDescriptorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 58
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->path_descriptor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/io/IPathDescriptor;

    iput-object v1, p0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catch_0
    :try_start_2
    new-instance v1, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;

    invoke-direct {v1, p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    .line 63
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 65
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    return-object p1
.end method
