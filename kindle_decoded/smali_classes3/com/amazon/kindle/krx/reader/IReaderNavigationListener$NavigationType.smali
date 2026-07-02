.class public final enum Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;
.super Ljava/lang/Enum;
.source "IReaderNavigationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

.field public static final enum PAGE_JUMP:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

.field public static final enum PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

.field public static final enum PAGE_PREVIOUS:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    new-instance v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    const/4 v1, 0x0

    const-string v2, "PAGE_NEXT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    .line 33
    new-instance v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    const/4 v2, 0x1

    const-string v3, "PAGE_PREVIOUS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_PREVIOUS:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    .line 38
    new-instance v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    const/4 v3, 0x2

    const-string v4, "PAGE_JUMP"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_JUMP:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    .line 23
    sget-object v5, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_PREVIOUS:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->$VALUES:[Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->$VALUES:[Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object v0
.end method
