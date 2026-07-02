.class public final enum Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;
.super Ljava/lang/Enum;
.source "TodoItemHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompletionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

.field public static final enum CANCELLED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

.field public static final enum COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

.field public static final enum FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

.field public static final enum UNRECOGNIZED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 97
    new-instance v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    const/4 v1, 0x0

    const-string v2, "COMPLETED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 101
    new-instance v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    const/4 v2, 0x1

    const-string v3, "FAILED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 115
    new-instance v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    const/4 v3, 0x2

    const-string v4, "CANCELLED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->CANCELLED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 119
    new-instance v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    const/4 v4, 0x3

    const-string v5, "UNRECOGNIZED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->UNRECOGNIZED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 93
    sget-object v6, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->CANCELLED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->$VALUES:[Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;
    .locals 1

    .line 93
    const-class v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;
    .locals 1

    .line 93
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->$VALUES:[Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {v0}, [Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    return-object v0
.end method
