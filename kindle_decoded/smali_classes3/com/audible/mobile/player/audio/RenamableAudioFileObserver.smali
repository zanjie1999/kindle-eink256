.class public Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;
.super Landroid/os/FileObserver;
.source "RenamableAudioFileObserver.java"


# instance fields
.field private final directory:Ljava/lang/String;

.field private final filename:Ljava/lang/String;

.field private final listener:Lcom/audible/mobile/player/audio/FileRenameEventListener;

.field private final logger:Lorg/slf4j/Logger;

.field private moveFromCandidate:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/player/audio/FileRenameEventListener;)V
    .locals 2

    const/16 v0, 0xc0

    .line 33
    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 19
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->logger:Lorg/slf4j/Logger;

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->moveFromCandidate:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->directory:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->filename:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->listener:Lcom/audible/mobile/player/audio/FileRenameEventListener;

    return-void
.end method

.method public static getNewInstance(Ljava/io/File;Lcom/audible/mobile/player/audio/FileRenameEventListener;)Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;
    .locals 2

    const-string v0, "File to observe was null"

    .line 60
    invoke-static {p0, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Trying to observe on a directory, not a file"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->isFalse(ZLjava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 67
    new-instance v1, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;

    invoke-direct {v1, v0, p0, p1}, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/player/audio/FileRenameEventListener;)V

    .line 68
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    return-object v1
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Event {} fired for path {}"

    invoke-interface {v0, v2, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    .line 103
    iget-object p2, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Unhandled event {}"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->moveFromCandidate:Ljava/lang/String;

    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->directory:Ljava/lang/String;

    iget-object v1, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->moveFromCandidate:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->directory:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->logger:Lorg/slf4j/Logger;

    const-string v1, "MOVED_TO fired, notifying listeners"

    invoke-interface {p2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->listener:Lcom/audible/mobile/player/audio/FileRenameEventListener;

    invoke-interface {p2, p1, v0}, Lcom/audible/mobile/player/audio/FileRenameEventListener;->onFileRenamed(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->filename:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 84
    iget-object p1, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->logger:Lorg/slf4j/Logger;

    const-string v0, "MOVED_FROM path set"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 85
    iput-object p2, p0, Lcom/audible/mobile/player/audio/RenamableAudioFileObserver;->moveFromCandidate:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method
