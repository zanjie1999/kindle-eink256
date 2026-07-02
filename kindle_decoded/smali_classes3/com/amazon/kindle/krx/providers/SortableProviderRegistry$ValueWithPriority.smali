.class Lcom/amazon/kindle/krx/providers/SortableProviderRegistry$ValueWithPriority;
.super Ljava/lang/Object;
.source "SortableProviderRegistry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueWithPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kindle/krx/providers/SortableProviderRegistry$ValueWithPriority<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field priority:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry$ValueWithPriority;->object:Ljava/lang/Object;

    .line 102
    iput p2, p0, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry$ValueWithPriority;->priority:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/krx/providers/SortableProviderRegistry$ValueWithPriority;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/SortableProviderRegistry$ValueWithPriority<",
            "TK;>;)I"
        }
    .end annotation

    .line 107
    iget p1, p1, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry$ValueWithPriority;->priority:I

    iget v0, p0, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry$ValueWithPriority;->priority:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry$ValueWithPriority;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry$ValueWithPriority;->compareTo(Lcom/amazon/kindle/krx/providers/SortableProviderRegistry$ValueWithPriority;)I

    move-result p1

    return p1
.end method
