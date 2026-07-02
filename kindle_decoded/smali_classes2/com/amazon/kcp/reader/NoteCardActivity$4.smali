.class Lcom/amazon/kcp/reader/NoteCardActivity$4;
.super Ljava/lang/Object;
.source "NoteCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/NoteCardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/NoteCardActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/NoteCardActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/reader/NoteCardActivity$4;->this$0:Lcom/amazon/kcp/reader/NoteCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/amazon/kcp/reader/NoteCardActivity$4;->this$0:Lcom/amazon/kcp/reader/NoteCardActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/NoteCardActivity;->saveAndExit()V

    return-void
.end method
