.class public Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;
.super Ljava/lang/Object;
.source "PlayerNewContentLoadedEvent.java"


# instance fields
.field private narrator:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;->title:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;->narrator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNarrator()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;->narrator:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;->title:Ljava/lang/String;

    return-object v0
.end method
