.class final enum Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;
.super Ljava/lang/Enum;
.source "ContentUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/ContentUpdateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AudibleContentUpdateFailureCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

.field public static final enum FAILED_PLUGIN_AUDIBLE_RETRYABLE:Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;


# instance fields
.field private final failureCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 132
    new-instance v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

    const/4 v1, 0x0

    const-string v2, "FAILED_PLUGIN_AUDIBLE_RETRYABLE"

    invoke-direct {v0, v2, v1, v2}, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->FAILED_PLUGIN_AUDIBLE_RETRYABLE:Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

    aput-object v0, v2, v1

    .line 128
    sput-object v2, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->$VALUES:[Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->failureCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;
    .locals 1

    .line 128
    const-class v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;
    .locals 1

    .line 128
    sget-object v0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->$VALUES:[Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;

    return-object v0
.end method


# virtual methods
.method public getFailureCode()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ContentUpdateHandler$AudibleContentUpdateFailureCode;->failureCode:Ljava/lang/String;

    return-object v0
.end method
