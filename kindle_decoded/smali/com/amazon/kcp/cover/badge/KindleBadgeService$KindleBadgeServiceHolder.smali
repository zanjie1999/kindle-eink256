.class Lcom/amazon/kcp/cover/badge/KindleBadgeService$KindleBadgeServiceHolder;
.super Ljava/lang/Object;
.source "KindleBadgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/badge/KindleBadgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindleBadgeServiceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/cover/badge/KindleBadgeService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/amazon/kcp/cover/badge/KindleBadgeService;

    new-instance v1, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;

    invoke-direct {v1}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/cover/badge/KindleBadgeService;-><init>(Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;Lcom/amazon/kcp/cover/badge/KindleBadgeService$1;)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/KindleBadgeService$KindleBadgeServiceHolder;->INSTANCE:Lcom/amazon/kcp/cover/badge/KindleBadgeService;

    return-void
.end method

.method static synthetic access$100()Lcom/amazon/kcp/cover/badge/KindleBadgeService;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kcp/cover/badge/KindleBadgeService$KindleBadgeServiceHolder;->INSTANCE:Lcom/amazon/kcp/cover/badge/KindleBadgeService;

    return-object v0
.end method
