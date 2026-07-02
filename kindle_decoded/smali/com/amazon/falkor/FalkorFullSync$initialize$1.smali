.class final Lcom/amazon/falkor/FalkorFullSync$initialize$1;
.super Ljava/lang/Object;
.source "FalkorFullSync.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/FalkorFullSync;->initialize(Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;Lcom/amazon/falkor/FalkorPluginPrefs;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/FalkorFullSync$initialize$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/falkor/FalkorFullSync$initialize$1;

    invoke-direct {v0}, Lcom/amazon/falkor/FalkorFullSync$initialize$1;-><init>()V

    sput-object v0, Lcom/amazon/falkor/FalkorFullSync$initialize$1;->INSTANCE:Lcom/amazon/falkor/FalkorFullSync$initialize$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/falkor/FalkorFullSync;->INSTANCE:Lcom/amazon/falkor/FalkorFullSync;

    invoke-static {v0}, Lcom/amazon/falkor/FalkorFullSync;->access$getFalkorFullSyncManager$p(Lcom/amazon/falkor/FalkorFullSync;)Lcom/amazon/falkor/FalkorFullSyncManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/falkor/FalkorFullSyncManager;->requestSyncIfNeeded()V

    :cond_0
    return-void
.end method
