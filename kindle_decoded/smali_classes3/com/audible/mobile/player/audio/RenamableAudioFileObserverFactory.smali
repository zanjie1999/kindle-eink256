.class public Lcom/audible/mobile/player/audio/RenamableAudioFileObserverFactory;
.super Ljava/lang/Object;
.source "RenamableAudioFileObserverFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileObserver(Ljava/io/File;Lcom/audible/mobile/player/audio/FileRenameEventListener;)Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;
    .locals 1

    const-string v0, "file can\'t be null"

    .line 14
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener can\'t be null"

    .line 15
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-static {p1, p2}, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->getNewInstance(Ljava/io/File;Lcom/audible/mobile/player/audio/FileRenameEventListener;)Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    move-result-object p1

    return-object p1
.end method
