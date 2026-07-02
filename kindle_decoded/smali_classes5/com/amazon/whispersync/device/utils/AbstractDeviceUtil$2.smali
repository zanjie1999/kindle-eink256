.class Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$2;
.super Ljava/lang/Object;
.source "AbstractDeviceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->createSessionID()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$2;->this$0:Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$2;->this$0:Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;

    iget-object v0, v0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "clickstreamSessionID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 166
    iget-object v5, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$2;->this$0:Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;

    invoke-static {v5, v2, v0}, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->access$000(Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;ILjava/security/SecureRandom;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$2;->this$0:Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;

    const/4 v5, 0x7

    invoke-static {v4, v5, v0}, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->access$000(Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;ILjava/security/SecureRandom;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$2;->this$0:Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;

    invoke-static {v4, v5, v0}, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->access$000(Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;ILjava/security/SecureRandom;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "%s-%s-%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v2, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$2;->this$0:Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;

    iget-object v2, v2, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 168
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated a new SessionID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil$2;->this$0:Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;

    invoke-static {v1, v0}, Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;->access$202(Lcom/amazon/whispersync/device/utils/AbstractDeviceUtil;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
