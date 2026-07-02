.class Lcom/amazon/kcp/reader/NoteCardActivity$8;
.super Ljava/lang/Object;
.source "NoteCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/NoteCardActivity;->onDelete()V
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

    .line 175
    iput-object p1, p0, Lcom/amazon/kcp/reader/NoteCardActivity$8;->this$0:Lcom/amazon/kcp/reader/NoteCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 178
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 179
    iget-object p1, p0, Lcom/amazon/kcp/reader/NoteCardActivity$8;->this$0:Lcom/amazon/kcp/reader/NoteCardActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/NoteCardActivity;->access$300(Lcom/amazon/kcp/reader/NoteCardActivity;)V

    return-void
.end method
