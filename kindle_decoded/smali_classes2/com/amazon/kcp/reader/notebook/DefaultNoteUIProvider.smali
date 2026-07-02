.class public Lcom/amazon/kcp/reader/notebook/DefaultNoteUIProvider;
.super Ljava/lang/Object;
.source "DefaultNoteUIProvider.java"

# interfaces
.implements Lcom/amazon/kcp/reader/notebook/INoteUIProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showNoteEditDialog(Landroid/os/Bundle;Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 2

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/reader/NoteCardActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
