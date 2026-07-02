.class final Lcom/amazon/falkor/FalkorFullSyncManager$followupWeblab$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FalkorFullSync.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/FalkorFullSyncManager;-><init>(Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;Lcom/amazon/falkor/FalkorPluginPrefs;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/mobileweblab/IWeblab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/FalkorFullSyncManager;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/FalkorFullSyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager$followupWeblab$2;->this$0:Lcom/amazon/falkor/FalkorFullSyncManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager$followupWeblab$2;->this$0:Lcom/amazon/falkor/FalkorFullSyncManager;

    invoke-static {v0}, Lcom/amazon/falkor/FalkorFullSyncManager;->access$getSdk$p(Lcom/amazon/falkor/FalkorFullSyncManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    const-string v1, "KINDLE_ANDROID_FALKOR_FULL_SYNC_FOLLOWUP_401636"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorFullSyncManager$followupWeblab$2;->invoke()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    return-object v0
.end method
