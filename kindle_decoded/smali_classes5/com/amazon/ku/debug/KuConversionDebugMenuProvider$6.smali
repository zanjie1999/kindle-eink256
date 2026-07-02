.class Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$6;
.super Ljava/lang/Object;
.source "KuConversionDebugMenuProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->mockKuBooks(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$numberOfBooks:[I


# direct methods
.method constructor <init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;[I)V
    .locals 0

    .line 184
    iput-object p2, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$6;->val$numberOfBooks:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 186
    iget-object p1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$6;->val$numberOfBooks:[I

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    aput p2, p1, v0

    return-void
.end method
