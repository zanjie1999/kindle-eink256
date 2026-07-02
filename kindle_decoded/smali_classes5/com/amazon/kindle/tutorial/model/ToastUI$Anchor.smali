.class public Lcom/amazon/kindle/tutorial/model/ToastUI$Anchor;
.super Ljava/lang/Object;
.source "ToastUI.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/model/ToastUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Anchor"
.end annotation


# instance fields
.field public final anchorID:Ljava/lang/String;

.field public final index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/ToastUI$Anchor;->anchorID:Ljava/lang/String;

    .line 102
    iput p2, p0, Lcom/amazon/kindle/tutorial/model/ToastUI$Anchor;->index:I

    return-void
.end method
