.class Lcom/amazon/kindle/cover/CoverImageService$2;
.super Ljava/lang/Object;
.source "CoverImageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cover/CoverImageService;->onStartUpCompletedEvent(Lcom/amazon/kindle/krx/foundation/StartupEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/cover/CoverImageService;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cover/CoverImageService;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/amazon/kindle/cover/CoverImageService$2;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 191
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->wasAppUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService$2;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    invoke-static {v0}, Lcom/amazon/kindle/cover/CoverImageService;->access$000(Lcom/amazon/kindle/cover/CoverImageService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CoverSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "isPDocCoverUpdated"

    .line 193
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/amazon/kindle/cover/CoverImageService$2;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    invoke-static {v1}, Lcom/amazon/kindle/cover/CoverImageService;->access$100(Lcom/amazon/kindle/cover/CoverImageService;)V

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/cover/CoverImageService$2;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    invoke-static {v0}, Lcom/amazon/kindle/cover/CoverImageService;->access$200(Lcom/amazon/kindle/cover/CoverImageService;)V

    return-void
.end method
