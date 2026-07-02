.class public interface abstract Lcom/amazon/bookwizard/data/Category;
.super Ljava/lang/Object;
.source "Category.java"


# static fields
.field public static final POPULAR:Lcom/amazon/bookwizard/data/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/bookwizard/data/Category$1;

    invoke-direct {v0}, Lcom/amazon/bookwizard/data/Category$1;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/data/Category;->POPULAR:Lcom/amazon/bookwizard/data/Category;

    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Lcom/amazon/bookwizard/data/LString;
.end method
