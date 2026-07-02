.class Lcom/amazon/klo/HighlightProvider$SingletonHolder;
.super Ljava/lang/Object;
.source "HighlightProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/HighlightProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/klo/HighlightProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Lcom/amazon/klo/HighlightProvider;

    invoke-direct {v0}, Lcom/amazon/klo/HighlightProvider;-><init>()V

    sput-object v0, Lcom/amazon/klo/HighlightProvider$SingletonHolder;->INSTANCE:Lcom/amazon/klo/HighlightProvider;

    return-void
.end method
