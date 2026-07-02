.class public final enum Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;
.super Ljava/lang/Enum;
.source "ILibraryLeftNavProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeftNavSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

.field public static final enum ABOUT:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

.field public static final enum DISCOVER:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

.field public static final enum LIBRARY:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

.field public static final enum TOP_LEVEL:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    const/4 v1, 0x0

    const-string v2, "TOP_LEVEL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->TOP_LEVEL:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    new-instance v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    const/4 v2, 0x1

    const-string v3, "LIBRARY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->LIBRARY:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    new-instance v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    const/4 v3, 0x2

    const-string v4, "DISCOVER"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->DISCOVER:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    new-instance v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    const/4 v4, 0x3

    const-string v5, "ABOUT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->ABOUT:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    .line 20
    sget-object v6, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->TOP_LEVEL:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->LIBRARY:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->DISCOVER:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->$VALUES:[Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->$VALUES:[Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;

    return-object v0
.end method
