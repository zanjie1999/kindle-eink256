.class public Lcom/amazon/klo/KLODetailHeaderBar;
.super Ljava/lang/Object;
.source "KLODetailHeaderBar.java"

# interfaces
.implements Lcom/amazon/klo/IKLODetailHeaderBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroidx/appcompat/app/ActionBarActivity;Lcom/amazon/klo/IKLODetailHeaderBar$IKLODetailOnHeaderActionBarClickListener;)V
    .locals 1

    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    sget v0, Lcom/amazon/klo/R$string;->klo_XR4T:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setNavigationMode(I)V

    return-void
.end method
