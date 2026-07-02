.class public Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;
.super Ljava/lang/Object;
.source "NotebookDropdownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/NotebookDropdownAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterItem"
.end annotation


# instance fields
.field private checked:Z

.field private data:Ljava/lang/Object;

.field private filterText:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private final isStarFilter:Z

.field private subFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V
    .locals 2

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->filterText:Ljava/lang/String;

    .line 318
    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 319
    iput-boolean v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->checked:Z

    .line 320
    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->data:Ljava/lang/Object;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->subFilters:Ljava/util/List;

    .line 325
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->filterText:Ljava/lang/String;

    .line 326
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 327
    iput-boolean p3, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->checked:Z

    .line 328
    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->data:Ljava/lang/Object;

    .line 329
    iput-boolean v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->isStarFilter:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;Z)V
    .locals 2

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->filterText:Ljava/lang/String;

    .line 318
    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 319
    iput-boolean v1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->checked:Z

    .line 320
    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->data:Ljava/lang/Object;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->subFilters:Ljava/util/List;

    .line 333
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->filterText:Ljava/lang/String;

    .line 334
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 335
    iput-boolean p3, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->checked:Z

    .line 336
    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->data:Ljava/lang/Object;

    .line 337
    iput-boolean p5, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->isStarFilter:Z

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getFilterText()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->filterText:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSubFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->subFilters:Ljava/util/List;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->checked:Z

    return v0
.end method

.method public isStarFilter()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->isStarFilter:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 369
    iput-boolean p1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->checked:Z

    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->filterText:Ljava/lang/String;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->setChecked(Z)V

    return-void
.end method
