.class public Lcom/audible/android/kcp/store/activity/MatchMakerActivity;
.super Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;
.source "MatchMakerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getStoreType()Lcom/audible/android/kcp/store/StoreType;
    .locals 1

    .line 30
    sget-object v0, Lcom/audible/android/kcp/store/StoreType;->MATCHMAKER:Lcom/audible/android/kcp/store/StoreType;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 25
    invoke-super/range {p0 .. p5}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->onCreate(Landroid/os/Bundle;Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
