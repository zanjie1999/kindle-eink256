.class public final enum Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
.super Ljava/lang/Enum;
.source "IAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/application/IAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

.field public static final enum CRITICAL:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

.field public static final enum HIGH:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

.field public static final enum LOW:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

.field public static final enum MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    const/4 v1, 0x0

    const-string v2, "CRITICAL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->CRITICAL:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    .line 27
    new-instance v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->HIGH:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    .line 31
    new-instance v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    const/4 v3, 0x2

    const-string v4, "MEDIUM"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    .line 35
    new-instance v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    const/4 v4, 0x3

    const-string v5, "LOW"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->LOW:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    .line 18
    sget-object v6, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->CRITICAL:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->HIGH:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->$VALUES:[Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->$VALUES:[Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
