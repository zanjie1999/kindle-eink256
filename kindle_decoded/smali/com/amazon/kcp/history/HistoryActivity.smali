.class public Lcom/amazon/kcp/history/HistoryActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "HistoryActivity.java"


# instance fields
.field private historyRecyclerAdapter:Lcom/amazon/kcp/history/HistoryRecyclerAdapter;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method private setupRecyclerView()V
    .locals 15

    .line 48
    sget v0, Lcom/amazon/kcp/history/R$id;->history_recycler_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/amazon/kcp/history/HistoryActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 50
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/history/HistoryActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 51
    iget-object v1, p0, Lcom/amazon/kcp/history/HistoryActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const-string v2, "Hello"

    const-string v3, "World"

    const-string v4, "Here"

    const-string v5, "Now"

    const-string v6, "What"

    const-string v7, "Are"

    const-string v8, "You"

    const-string v9, "Hence"

    const-string v10, "No"

    const-string v11, "Work"

    const-string v12, "Then"

    const-string v13, "More"

    const-string v14, "Fix"

    .line 55
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/amazon/kcp/history/HistoryRecyclerAdapter;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/history/HistoryRecyclerAdapter;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/kcp/history/HistoryActivity;->historyRecyclerAdapter:Lcom/amazon/kcp/history/HistoryRecyclerAdapter;

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/history/HistoryActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setupToolBar()V
    .locals 2

    .line 30
    sget v0, Lcom/amazon/kcp/history/R$id;->history_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 38
    :cond_0
    sget v0, Lcom/amazon/kcp/history/R$id;->history_toolbar_close_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 39
    new-instance v1, Lcom/amazon/kcp/history/HistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/history/HistoryActivity$1;-><init>(Lcom/amazon/kcp/history/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget p1, Lcom/amazon/kcp/history/R$layout;->history_activity:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/history/HistoryActivity;->setupToolBar()V

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/history/HistoryActivity;->setupRecyclerView()V

    return-void
.end method
