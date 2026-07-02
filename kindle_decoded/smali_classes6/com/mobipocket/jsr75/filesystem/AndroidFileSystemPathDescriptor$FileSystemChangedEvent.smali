.class public Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;
.super Ljava/lang/Object;
.source "AndroidFileSystemPathDescriptor.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSystemChangedEvent"
.end annotation


# instance fields
.field mediaIntentAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;->mediaIntentAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMediaIntentAction()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;->mediaIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setMediaIntentAction(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;->mediaIntentAction:Ljava/lang/String;

    return-void
.end method
