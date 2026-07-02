.class public final enum Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;
.super Ljava/lang/Enum;
.source "ILibraryLeftNavProviderV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeftNavSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

.field public static final enum ABOUT:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

.field public static final enum DISCOVER:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

.field public static final enum LIBRARY:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

.field public static final enum STORE:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

.field public static final enum TOP_LEVEL:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

.field public static final enum YOUR_ACCOUNT:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    new-instance v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    const/4 v1, 0x0

    const-string v2, "TOP_LEVEL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->TOP_LEVEL:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    .line 20
    new-instance v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    const/4 v2, 0x1

    const-string v3, "LIBRARY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->LIBRARY:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    const/4 v3, 0x2

    const-string v4, "DISCOVER"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->DISCOVER:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    .line 22
    new-instance v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    const/4 v4, 0x3

    const-string v5, "YOUR_ACCOUNT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->YOUR_ACCOUNT:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    const/4 v5, 0x4

    const-string v6, "STORE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->STORE:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    .line 24
    new-instance v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    const/4 v6, 0x5

    const-string v7, "ABOUT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->ABOUT:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    .line 17
    sget-object v8, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->TOP_LEVEL:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->LIBRARY:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->DISCOVER:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->YOUR_ACCOUNT:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->STORE:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->$VALUES:[Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->$VALUES:[Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    return-object v0
.end method
