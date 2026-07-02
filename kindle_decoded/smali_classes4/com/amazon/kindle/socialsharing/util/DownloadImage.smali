.class public Lcom/amazon/kindle/socialsharing/util/DownloadImage;
.super Landroid/os/AsyncTask;
.source "DownloadImage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTHORITY_SUFFIX:Ljava/lang/String; = "socialsharing.fileprovider"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final REMOTE_IMAGE_EXTENSION:Ljava/lang/String; = ".png"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final bookTitle:Ljava/lang/String;

.field private final intent:Landroid/content/Intent;

.field private final spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/util/DownloadImage;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->bitmap:Landroid/graphics/Bitmap;

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->activity:Landroid/app/Activity;

    .line 53
    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->bookTitle:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->intent:Landroid/content/Intent;

    .line 56
    sget p2, Lcom/amazon/kindle/socialsharing/common/R$string;->spinner_dialog_fragment_message:I

    .line 57
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->newInstance(Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    return-void
.end method

.method private dismissSpinnerDialogSafely()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 2

    .line 123
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "socialsharing.fileprovider"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 67
    aget-object p1, p1, v0

    .line 69
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->bitmap:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to download image."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 80
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->dismissSpinnerDialogSafely()V

    if-nez p1, :cond_0

    .line 84
    :try_start_0
    sget-object p1, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Cannot download file."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 87
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->bookTitle:Ljava/lang/String;

    const-string v2, ".png"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 92
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 93
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 95
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 96
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 98
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->getAuthority()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 108
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error happening when compressing bitmap"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 112
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/DownloadImage;->spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
