.class Lcom/amazon/kindle/FTUELoadingActivity$3;
.super Ljava/lang/Object;
.source "FTUELoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/FTUELoadingActivity;->tryToShowStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/FTUELoadingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/FTUELoadingActivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/amazon/kindle/FTUELoadingActivity$3;->this$0:Lcom/amazon/kindle/FTUELoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    invoke-static {}, Lcom/amazon/kindle/FTUELoadingActivity;->access$100()Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/FTUELoadingActivity$3;->this$0:Lcom/amazon/kindle/FTUELoadingActivity;

    sget-object v1, Lcom/amazon/kindle/store/StoreType;->BOOKSTORE:Lcom/amazon/kindle/store/StoreType;

    invoke-static {v0, v1}, Lcom/amazon/kindle/utils/StoreOpeners;->createStorefrontOpener(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    const-string v1, "kindle_kfa_ftue_redirect"

    .line 166
    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/FTUELoadingActivity$3;->this$0:Lcom/amazon/kindle/FTUELoadingActivity;

    invoke-virtual {v0}, Lcom/amazon/kindle/FTUELoadingActivity;->finish()V

    return-void
.end method
