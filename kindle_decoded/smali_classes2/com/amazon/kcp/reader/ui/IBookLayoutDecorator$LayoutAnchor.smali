.class public final enum Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;
.super Ljava/lang/Enum;
.source "IBookLayoutDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAnchor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;

.field public static final enum LocationBar:Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;

    const/4 v1, 0x0

    const-string v2, "LocationBar"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;->LocationBar:Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;

    aput-object v0, v2, v1

    .line 20
    sput-object v2, Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;->$VALUES:[Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;->$VALUES:[Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;

    return-object v0
.end method
