.class final Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceEventListenerImpl;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/player/PlayerServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlayerServiceEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceEventListenerImpl;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;)V
    .locals 0

    .line 760
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceEventListenerImpl;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onTaskRemoved()V
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceEventListenerImpl;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$2200(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Z)V

    .line 768
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceEventListenerImpl;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$1800(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    .line 769
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceEventListenerImpl;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$400(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method
