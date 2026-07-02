.class Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper$1;
.super Ljava/lang/Object;
.source "CrashDetectionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->uploadCrashReportAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper$1;->this$0:Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper$1;->this$0:Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->uploadCrashReport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    invoke-static {}, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to upload crash."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
