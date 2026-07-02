.class public final enum Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;
.super Ljava/lang/Enum;
.source "AllTodoItemsHandledEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AllTodoItemsHandledEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TodoEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

.field public static final enum TODO_HANDLE_FINISHED:Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

.field public static final enum TODO_HANDLE_START:Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    const/4 v1, 0x0

    const-string v2, "TODO_HANDLE_START"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;->TODO_HANDLE_START:Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    .line 8
    new-instance v0, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    const/4 v2, 0x1

    const-string v3, "TODO_HANDLE_FINISHED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;->TODO_HANDLE_FINISHED:Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    .line 6
    sget-object v4, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;->TODO_HANDLE_START:Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;->$VALUES:[Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;->$VALUES:[Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    return-object v0
.end method
