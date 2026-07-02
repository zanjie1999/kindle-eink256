.class public Lcom/amazon/krf/media/AudioManagerProxy;
.super Ljava/lang/Object;
.source "AudioManagerProxy.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/media/AudioManagerProxy$AudioManagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioManagerProxy"


# instance fields
.field private final mAudioManager:Lcom/amazon/krf/media/IAudioManager;

.field private mFocusChangeListenerList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/krf/media/IAudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 46
    iput-object p1, p0, Lcom/amazon/krf/media/AudioManagerProxy;->mAudioManager:Lcom/amazon/krf/media/IAudioManager;

    .line 47
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/media/AudioManagerProxy;->mFocusChangeListenerList:Ljava/util/Set;

    .line 48
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static getSystemAudioManager(Landroid/content/Context;)Lcom/amazon/krf/media/IAudioManager;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "audio"

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    .line 131
    new-instance v0, Lcom/amazon/krf/media/AudioManagerProxy$AudioManagerAdapter;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/AudioManagerProxy$AudioManagerAdapter;-><init>(Landroid/media/AudioManager;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/krf/media/AudioManagerProxy;->mAudioManager:Lcom/amazon/krf/media/IAudioManager;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amazon/krf/media/AudioManagerProxy;->mAudioManager:Lcom/amazon/krf/media/IAudioManager;

    invoke-interface {v0, p0}, Lcom/amazon/krf/media/IAudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public declared-synchronized addFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/media/AudioManagerProxy;->mFocusChangeListenerList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 60
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized containsFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/media/AudioManagerProxy;->mFocusChangeListenerList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 80
    monitor-exit p0

    return p1
.end method

.method public declared-synchronized onAudioFocusChange(I)V
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/amazon/krf/media/AudioManagerProxy;->mFocusChangeListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/media/AudioManagerProxy;->mFocusChangeListenerList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 71
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public requestAudioFocus()Z
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/amazon/krf/media/AudioManagerProxy;->mAudioManager:Lcom/amazon/krf/media/IAudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 90
    invoke-interface {v0, p0, v2, v3}, Lcom/amazon/krf/media/IAudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAudioFocus: failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioManagerProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method
