.class public interface abstract Lcom/amazon/kindle/event/IEventProvider;
.super Ljava/lang/Object;
.source "IEventProvider.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALL_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v1, "ALL"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/event/IEventProvider;->ALL_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    return-void
.end method


# virtual methods
.method public abstract registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract unregisterHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation
.end method
