.class public final enum Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;
.super Ljava/lang/Enum;
.source "PageNavigatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;

.field public static final enum GOTO:Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;

    const/4 v1, 0x0

    const-string v2, "GOTO"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;->GOTO:Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;

    aput-object v0, v2, v1

    .line 11
    sput-object v2, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;->$VALUES:[Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;->$VALUES:[Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;

    return-object v0
.end method
