.class public final Lcom/amazon/kindle/krx/update/PluginUpdateState;
.super Ljava/lang/Object;
.source "PluginUpdateState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;
    }
.end annotation


# static fields
.field public static final FAILED:Lcom/amazon/kindle/krx/update/PluginUpdateState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

.field public static final READY:Lcom/amazon/kindle/krx/update/PluginUpdateState;

.field public static final WAIT:Lcom/amazon/kindle/krx/update/PluginUpdateState;


# instance fields
.field private final failureCode:Ljava/lang/String;

.field private final type:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/amazon/kindle/krx/update/PluginUpdateState;

    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/update/PluginUpdateState;-><init>(Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/update/PluginUpdateState;->READY:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    .line 56
    new-instance v0, Lcom/amazon/kindle/krx/update/PluginUpdateState;

    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->WAIT:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/update/PluginUpdateState;-><init>(Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/update/PluginUpdateState;->WAIT:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    .line 63
    new-instance v0, Lcom/amazon/kindle/krx/update/PluginUpdateState;

    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/update/PluginUpdateState;-><init>(Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED_RETRYABLE:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    const-string v0, "FAILED_SIDECAR_ERROR"

    .line 72
    invoke-static {v0}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->fromFailureCode(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/update/PluginUpdateState;->FAILED:Lcom/amazon/kindle/krx/update/PluginUpdateState;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/amazon/kindle/krx/update/PluginUpdateState;->type:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    .line 83
    iput-object p2, p0, Lcom/amazon/kindle/krx/update/PluginUpdateState;->failureCode:Ljava/lang/String;

    return-void
.end method

.method public static fromFailureCode(Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;
    .locals 2

    if-eqz p0, :cond_1

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/amazon/kindle/krx/update/PluginUpdateState;

    sget-object v1, Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;->FAILED:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/krx/update/PluginUpdateState;-><init>(Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;Ljava/lang/String;)V

    return-object v0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "failureCode is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "failureCode is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFailureCode()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/krx/update/PluginUpdateState;->failureCode:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/krx/update/PluginUpdateState;->type:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginUpdateState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/update/PluginUpdateState;->type:Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/update/PluginUpdateState;->failureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
