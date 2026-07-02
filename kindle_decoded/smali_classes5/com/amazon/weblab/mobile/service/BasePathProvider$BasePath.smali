.class final enum Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;
.super Ljava/lang/Enum;
.source "BasePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/weblab/mobile/service/BasePathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BasePath"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

.field public static final enum CN:Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

.field public static final enum EU:Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

.field public static final enum FE:Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

.field public static final enum NA:Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;


# instance fields
.field private mExternalGammaBasePath:Ljava/lang/String;

.field private mExternalProdBasePath:Ljava/lang/String;

.field private mInternalBetaBasePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 26
    new-instance v6, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    const-string v1, "NA"

    const/4 v2, 0x0

    const-string v3, "msh.amazon.com/mwl"

    const-string/jumbo v4, "shm.amazon.com/mwl"

    const-string v5, "mobileweblab-live-beta.corp.amazon.com/mwl"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->NA:Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    new-instance v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    const-string v8, "EU"

    const/4 v9, 0x1

    const-string v10, "msh.amazon.co.uk/mwl"

    const-string/jumbo v11, "shm.amazon.co.uk/mwl"

    const-string v12, "mobileweblab-live-beta.corp.amazon.com/mwl"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->EU:Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    new-instance v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    const-string v2, "FE"

    const/4 v3, 0x2

    const-string v4, "msh.amazon.co.jp/mwl"

    const-string/jumbo v5, "shm.amazon.co.jp/mwl"

    const-string v6, "mobileweblab-live-beta.corp.amazon.com/mwl"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->FE:Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    new-instance v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    const-string v8, "CN"

    const/4 v9, 0x3

    const-string v10, "msh.amazon.cn/mwl"

    const-string/jumbo v11, "shm.amazon.cn/mwl"

    const-string v12, "mobileweblab-live-beta.corp.amazon.com/mwl"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->CN:Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    .line 24
    sget-object v2, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->NA:Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->EU:Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->FE:Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->$VALUES:[Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->mExternalProdBasePath:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->mExternalGammaBasePath:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->mInternalBetaBasePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->getBasePath(Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBasePath(Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;)Ljava/lang/String;
    .locals 3

    .line 40
    sget-object v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$1;->$SwitchMap$com$amazon$weblab$mobile$settings$MobileWeblabServiceEndpoint:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 46
    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->mInternalBetaBasePath:Ljava/lang/String;

    return-object p1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s is not a supported endpoint."

    .line 48
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->mExternalGammaBasePath:Ljava/lang/String;

    return-object p1

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->mExternalProdBasePath:Ljava/lang/String;

    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    return-object p0
.end method

.method public static values()[Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->$VALUES:[Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    invoke-virtual {v0}, [Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    return-object v0
.end method
