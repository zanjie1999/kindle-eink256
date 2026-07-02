.class public abstract Lcom/amazon/kedu/ftue/events/JIT;
.super Lcom/amazon/kedu/ftue/events/FTUEEvent;
.source "JIT.java"


# instance fields
.field private final actionBarButtonId:Ljava/lang/String;

.field private final messageResourceId:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/ftue/events/FTUEEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    iput-object p4, p0, Lcom/amazon/kedu/ftue/events/JIT;->actionBarButtonId:Ljava/lang/String;

    .line 23
    iput p5, p0, Lcom/amazon/kedu/ftue/events/JIT;->messageResourceId:I

    return-void
.end method


# virtual methods
.method public getActionBarButtonId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kedu/ftue/events/JIT;->actionBarButtonId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageResourceId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amazon/kedu/ftue/events/JIT;->messageResourceId:I

    return v0
.end method
