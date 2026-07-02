.class public Lcom/amazon/kcp/cover/badge/KindleBadgeService;
.super Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;
.source "KindleBadgeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/badge/KindleBadgeService$KindleBadgeServiceHolder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;-><init>(Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;Lcom/amazon/kcp/cover/badge/KindleBadgeService$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/badge/KindleBadgeService;-><init>(Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;)V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/cover/badge/service/IBadgeService;
    .locals 1

    .line 23
    invoke-static {}, Lcom/amazon/kcp/cover/badge/KindleBadgeService$KindleBadgeServiceHolder;->access$100()Lcom/amazon/kcp/cover/badge/KindleBadgeService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected generateBinder(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;)Lcom/amazon/kcp/cover/badge/BadgeBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Lcom/amazon/kcp/cover/badge/Badge;",
            ">;",
            "Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;",
            ")",
            "Lcom/amazon/kcp/cover/badge/BadgeBinder;"
        }
    .end annotation

    .line 35
    new-instance p4, Lcom/amazon/kcp/cover/badge/BadgeBinder;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/kcp/cover/badge/BadgeBinder;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object p4
.end method
