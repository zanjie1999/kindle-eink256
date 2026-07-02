.class public final Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;
.super Ljava/lang/Object;
.source "FamilySharingActionButtonProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Ljava/util/List<",
        "+",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;",
        "Ljava/util/List<",
        "+",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

.field private final networkService:Lcom/amazon/kindle/krx/network/INetworkService;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/ActivityProvider;Lcom/amazon/kindle/krx/network/INetworkService;)V
    .locals 1

    const-string v0, "activityProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;->activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

    iput-object p2, p0, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;->networkService:Lcom/amazon/kindle/krx/network/INetworkService;

    return-void
.end method

.method public static final synthetic access$getActivityProvider$p(Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;)Lcom/amazon/kcp/library/ActivityProvider;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;->activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

    return-object p0
.end method

.method public static final synthetic access$getNetworkService$p(Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;)Lcom/amazon/kindle/krx/network/INetworkService;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;->networkService:Lcom/amazon/kindle/krx/network/INetworkService;

    return-object p0
.end method

.method private final createFSActionButton(I)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider$createFSActionButton$1;-><init>(Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;I)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 23
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->isContentSharingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    sget p1, Lcom/amazon/kcp/profiles/R$string;->family_sharing_share_this_book:I

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;->createFSActionButton(I)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;->get(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method
