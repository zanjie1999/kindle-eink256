.class public Lcom/amazon/xray/ui/listener/CancelOnClickListener;
.super Ljava/lang/Object;
.source "CancelOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/xray/ui/listener/CancelOnClickListener;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/CancelOnClickListener;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
