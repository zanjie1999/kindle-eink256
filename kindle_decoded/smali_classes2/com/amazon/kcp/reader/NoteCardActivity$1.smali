.class Lcom/amazon/kcp/reader/NoteCardActivity$1;
.super Ljava/lang/Object;
.source "NoteCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/reader/NoteCardActivity$1;->this$0:Lcom/amazon/kcp/reader/NoteCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/amazon/kcp/reader/NoteCardActivity$1;->this$0:Lcom/amazon/kcp/reader/NoteCardActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/NoteCardActivity;->saveAndExit()V

    return-void
.end method
