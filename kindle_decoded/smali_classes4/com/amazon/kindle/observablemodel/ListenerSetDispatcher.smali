.class public abstract Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;
.super Ljava/lang/Object;
.source "ListenerSetDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ID:",
        "Ljava/lang/Object;",
        "VA",
        "LUE:Ljava/lang/Object;",
        "LISTENER:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract handleListenerValueForKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;TVA",
            "LUE;",
            "T",
            "LISTENER;",
            ")V"
        }
    .end annotation
.end method

.method abstract keyHasNoListeners(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)V"
        }
    .end annotation
.end method
