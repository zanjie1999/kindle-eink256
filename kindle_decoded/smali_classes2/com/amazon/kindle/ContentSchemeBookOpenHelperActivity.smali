.class public Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "ContentSchemeBookOpenHelperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;,
        Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;
    }
.end annotation


# static fields
.field private static final ALERT_MESSAGE_REQUEST:I = 0xbeef

.field private static final TAG:Ljava/lang/String;

.field private static tempThread:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;


# instance fields
.field private final BUFFER_BYTES:I

.field private loadingSpinner:Landroid/widget/ProgressBar;

.field private tempFileWriteCompleteEvent:Lcom/amazon/foundation/internal/StringEventProvider;

.field private temporaryFileCreatedCallback:Lcom/amazon/foundation/IStringCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/amazon/foundation/internal/StringEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/StringEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->tempFileWriteCompleteEvent:Lcom/amazon/foundation/internal/StringEventProvider;

    const/16 v0, 0x800

    .line 55
    iput v0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->BUFFER_BYTES:I

    .line 73
    new-instance v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;-><init>(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->temporaryFileCreatedCallback:Lcom/amazon/foundation/IStringCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;)Lcom/amazon/foundation/internal/StringEventProvider;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->tempFileWriteCompleteEvent:Lcom/amazon/foundation/internal/StringEventProvider;

    return-object p0
.end method

.method public static deleteTemporaryFile(Ljava/lang/String;)V
    .locals 2

    .line 114
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 121
    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->getContentTypeFromFilePath(Ljava/lang/String;)Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->access$100(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".index"

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private static getContentTypeFromFilePath(Ljava/lang/String;)Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;
    .locals 1

    .line 363
    sget-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->MOBI:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    invoke-static {v0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->access$100(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 364
    sget-object p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->MOBI:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    return-object p0

    .line 368
    :cond_0
    sget-object p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->PDF:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    return-object p0
.end method

.method private static getContentTypeFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;
    .locals 1

    .line 379
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->MOBI:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    invoke-static {p1}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->access$100(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 381
    sget-object p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->MOBI:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    return-object p0

    .line 385
    :cond_0
    sget-object p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->PDF:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    return-object p0
.end method

.method private launchAlertMessageActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const p2, 0xbeef

    .line 180
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public cancelExecutingThread()V
    .locals 2

    .line 137
    sget-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->tempThread:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->tempThread:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->setCancelFlag(Z)V

    .line 143
    sget-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->tempThread:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;

    invoke-virtual {v0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->cleanUp()V

    :cond_0
    return-void
.end method

.method public getWriteCompleteEvent()Lcom/amazon/foundation/internal/StringEventProvider;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->tempFileWriteCompleteEvent:Lcom/amazon/foundation/internal/StringEventProvider;

    return-object v0
.end method

.method public handleTemporaryFile(Landroid/net/Uri;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->tempFileWriteCompleteEvent:Lcom/amazon/foundation/internal/StringEventProvider;

    iget-object v1, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->temporaryFileCreatedCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/StringEventProvider;->register(Lcom/amazon/foundation/IStringCallback;)Z

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->getContentTypeFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->access$100(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    .line 237
    :try_start_1
    sget p1, Lcom/amazon/kindle/krl/R$string;->is_pending_error_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->is_pending_error_message:I

    .line 238
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->launchAlertMessageActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->cancelExecutingThread()V

    .line 245
    iget-object v0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 247
    new-instance v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;

    invoke-direct {v0, p0, v2, p1}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;-><init>(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;Ljava/io/File;Ljava/io/InputStream;)V

    sput-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->tempThread:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;

    .line 248
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_2

    .line 229
    sget p1, Lcom/amazon/kindle/krl/R$string;->is_pending_error_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->is_pending_error_message:I

    .line 230
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->launchAlertMessageActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_2
    throw p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    :goto_0
    sget-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read document: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget p1, Lcom/amazon/kindle/krl/R$string;->permission_error_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->permission_error_message:I

    .line 252
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->launchAlertMessageActivity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const p2, 0xbeef

    if-ne p1, p2, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 158
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    sget p1, Lcom/amazon/kindle/krl/R$layout;->loading_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 161
    sget p1, Lcom/amazon/kindle/krl/R$id;->loading_spinner:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->handleTemporaryFile(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 170
    :catch_0
    sget-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t determine how to open URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 174
    sget v0, Lcom/amazon/kindle/krl/R$string;->permission_error_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->launchAlertMessageActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 149
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    .line 153
    invoke-virtual {p0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->cancelExecutingThread()V

    return-void
.end method

.method public openTemporaryFile(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->getContentTypeFromFilePath(Ljava/lang/String;)Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->MOBI:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 98
    invoke-static {v2, p1}, Lcom/amazon/kcp/library/BookOpenHelper;->openMobi(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v2, p1}, Lcom/amazon/kcp/library/BookOpenHelper;->openPdf(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
