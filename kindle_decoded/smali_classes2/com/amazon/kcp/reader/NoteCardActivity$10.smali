.class Lcom/amazon/kcp/reader/NoteCardActivity$10;
.super Ljava/lang/Object;
.source "NoteCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 192
    iput-object p1, p0, Lcom/amazon/kcp/reader/NoteCardActivity$10;->this$0:Lcom/amazon/kcp/reader/NoteCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x54

    if-ne p2, p1, :cond_0

    .line 194
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
