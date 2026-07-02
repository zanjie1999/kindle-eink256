.class Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$1;
.super Landroid/os/FileObserver;
.source "AndroidFileSystemPathDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getFileObserver()Landroid/os/FileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;


# direct methods
.method constructor <init>(Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;Ljava/lang/String;I)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$1;->this$0:Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    .line 309
    invoke-static {p2}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->isFileExtensionSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 310
    new-instance p1, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;

    invoke-direct {p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;-><init>()V

    .line 311
    iget-object p2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$1;->this$0:Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;

    invoke-static {p2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->access$000(Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method
