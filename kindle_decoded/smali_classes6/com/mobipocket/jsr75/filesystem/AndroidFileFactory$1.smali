.class Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory$1;
.super Ljava/lang/Object;
.source "AndroidFileFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectory(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;

.field final synthetic val$localDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory$1;->this$0:Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;

    iput-object p2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory$1;->val$localDir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 103
    invoke-static {}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory$1;->this$0:Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;

    iget-object v2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory$1;->val$localDir:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->access$100(Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;Ljava/lang/String;)V

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
