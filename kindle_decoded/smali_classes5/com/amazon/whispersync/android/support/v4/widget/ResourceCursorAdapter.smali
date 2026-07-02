.class public abstract Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;
.super Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;
.source "ResourceCursorAdapter.java"


# instance fields
.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0, p1, p3}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 55
    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 94
    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 77
    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    return-void
.end method

.method public setViewResource(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    return-void
.end method
