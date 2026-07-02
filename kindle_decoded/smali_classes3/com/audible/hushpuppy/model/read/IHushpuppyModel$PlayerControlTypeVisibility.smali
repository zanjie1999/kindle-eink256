.class public final enum Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;
.super Ljava/lang/Enum;
.source "IHushpuppyModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/model/read/IHushpuppyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerControlTypeVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

.field public static final enum DOWNLOAD:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

.field public static final enum NONE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

.field public static final enum PAUSE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

.field public static final enum PLAY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

.field public static final enum SPINNER:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    const/4 v1, 0x0

    const-string v2, "PLAY"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->PLAY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    .line 34
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    const/4 v2, 0x1

    const-string v3, "PAUSE"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->PAUSE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    .line 36
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    const/4 v3, 0x2

    const-string v4, "SPINNER"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->SPINNER:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    .line 38
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    const/4 v4, 0x3

    const-string v5, "DOWNLOAD"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->DOWNLOAD:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    .line 40
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    const/4 v5, 0x4

    const-string v6, "NONE"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->NONE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    .line 29
    sget-object v7, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->PLAY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->PAUSE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->SPINNER:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->DOWNLOAD:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->$VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;
    .locals 1

    .line 29
    const-class v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;
    .locals 1

    .line 29
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->$VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    return-object v0
.end method
