.class Lcom/amazon/kcp/application/AndroidLocalStorage$DeleteArguments;
.super Ljava/lang/Object;
.source "AndroidLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidLocalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteArguments"
.end annotation


# instance fields
.field public final table:Ljava/lang/String;

.field public final whereArgs:[Ljava/lang/String;

.field public final whereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage$DeleteArguments;->table:Ljava/lang/String;

    .line 325
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage$DeleteArguments;->whereClause:Ljava/lang/String;

    .line 326
    iput-object p3, p0, Lcom/amazon/kcp/application/AndroidLocalStorage$DeleteArguments;->whereArgs:[Ljava/lang/String;

    return-void
.end method
