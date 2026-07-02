.class public final enum Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;
.super Ljava/lang/Enum;
.source "BookCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/BookCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverlayVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field public static final enum INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field public static final enum VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field public static final enum VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    const/4 v1, 0x0

    const-string v2, "INVISIBLE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 60
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    const/4 v2, 0x1

    const-string v3, "VISIBLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 65
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    const/4 v3, 0x2

    const-string v4, "VISIBLE_IF_DEFAULT_COVER"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 51
    sget-object v5, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->$VALUES:[Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->$VALUES:[Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    return-object v0
.end method
