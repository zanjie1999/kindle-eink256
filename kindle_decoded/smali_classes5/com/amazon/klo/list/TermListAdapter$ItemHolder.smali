.class Lcom/amazon/klo/list/TermListAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "TermListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/list/TermListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemHolder"
.end annotation


# instance fields
.field itemDesc:Lcom/amazon/klo/EllipsizingTextView;

.field itemTerm:Lcom/amazon/klo/EllipsizingTextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
