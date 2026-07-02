.class Lcom/amazon/kcp/application/AndroidLocalStorage$InsertArguments;
.super Ljava/lang/Object;
.source "AndroidLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidLocalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InsertArguments"
.end annotation


# instance fields
.field public final contentValues:Landroid/content/ContentValues;

.field public final nullColumnHack:Ljava/lang/String;

.field public final table:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage$InsertArguments;->table:Ljava/lang/String;

    .line 313
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage$InsertArguments;->nullColumnHack:Ljava/lang/String;

    .line 314
    iput-object p3, p0, Lcom/amazon/kcp/application/AndroidLocalStorage$InsertArguments;->contentValues:Landroid/content/ContentValues;

    return-void
.end method
